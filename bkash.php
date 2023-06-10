<?php
// Set your bKash API credentials
$baseUrl = 'https://checkout.sandbox.bka.sh'; // Sandbox URL (for testing)
$apiKey = 'YOUR_API_KEY'; // Replace with your API key
$apiSecret = 'YOUR_API_SECRET'; // Replace with your API secret
$tokenUrl = $baseUrl . '/token/grant';
$createPaymentUrl = $baseUrl . '/checkout/payment/create';

// Generate an access token
$authHeaders = base64_encode($apiKey . ':' . $apiSecret);
$tokenData = [
    'app_key' => $apiKey,
    'app_secret' => $apiSecret,
];
$options = [
    'http' => [
        'header' => "Content-Type: application/json\r\n"
            . "Authorization: Basic " . $authHeaders . "\r\n",
        'method' => 'POST',
        'content' => json_encode($tokenData),
    ],
];
$context = stream_context_create($options);
$tokenResponse = file_get_contents($tokenUrl, false, $context);
$tokenData = json_decode($tokenResponse, true);

if (isset($tokenData['id_token'])) {
    $accessToken = $tokenData['id_token'];

    // Create a payment request
    $paymentData = [
        'amount' => 100, // Replace with the actual payment amount
        'intent' => 'sale',
        'currency' => 'BDT',
        'merchantInvoiceNumber' => uniqid(),
        'merchantAssociationInfo' => 'Your Association Info',
        'productDetails' => 'Product Description',
    ];
    $options = [
        'http' => [
            'header' => "Content-Type: application/json\r\n"
                . "Authorization: $accessToken\r\n",
            'method' => 'POST',
            'content' => json_encode($paymentData),
        ],
    ];
    $context = stream_context_create($options);
    $paymentResponse = file_get_contents($createPaymentUrl, false, $context);
    $paymentData = json_decode($paymentResponse, true);

    if (isset($paymentData['paymentID'])) {
        $paymentID = $paymentData['paymentID'];

        // Redirect the user to the bKash payment page
        $paymentUrl = $baseUrl . '/checkout/payment/' . $paymentID;
        header("Location: $paymentUrl");
    } else {
        // Handle payment request error
        echo 'Payment request failed: ' . $paymentData['errorMessage'];
    }
} else {
    // Handle access token error
    echo 'Access token request failed: ' . $tokenData['errorMessage'];
}
?>
