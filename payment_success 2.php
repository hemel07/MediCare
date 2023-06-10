<?php require_once('header.php'); ?>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                <p>
                    <h3 style="margin-top:20px;"><?php echo LANG_VALUE_121; ?></h3>
                    <a href="dashboard.php" class="btn btn-success"><?php echo LANG_VALUE_91; ?></a>
                </p>
            </div>
        </div>
    </div>
</div>

<?php
// Generate receipt
$receiptNumber = uniqid(); // Generate a unique receipt number using the uniqid() function
$amountPaid = 0;

// Retrieve product prices
$statement = $pdo->prepare("SELECT p_id, p_price FROM tbl_product");
$statement->execute();
$products = $statement->fetchAll(PDO::FETCH_ASSOC);
$priceLookup = array();

foreach ($products as $product) {
    $priceLookup[$product['p_id']] = $product['p_price'];
}

// Calculate total amount paid
if (isset($_SESSION['cart_p_id'])) {
    $amountPaid = 0;
    foreach ($_SESSION['cart_p_id'] as $key => $value) {
        $productID = $value;
        $productPrice = $priceLookup[$productID];
        $productQty = $_SESSION['cart_p_qty'][$key];
        $amountPaid += $productPrice * $productQty;
    }
}

// Output receipt
echo "<div class='receipt'>";
echo "<h4>Receipt</h4>";
echo "<p>Receipt Number: " . $receiptNumber . "</p>";
echo "<p>Amount Paid: $" . $amountPaid . "</p>";
echo "<p>Payment Date: " . date("Y-m-d") . "</p>";
echo "</div>";
?>

<?php require_once('footer.php'); ?>
