.class Lcom/ub/main/foodsale/FoodProduct$5;
.super Ljava/lang/Object;
.source "FoodProduct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodProduct;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodProduct;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$5;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iput-object p2, p0, Lcom/ub/main/foodsale/FoodProduct$5;->val$view:Landroid/view/View;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 499
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodProduct$5;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/foodsale/FoodOrderData;

    #setter for: Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;
    invoke-static {v1, v0}, Lcom/ub/main/foodsale/FoodProduct;->access$8(Lcom/ub/main/foodsale/FoodProduct;Lcom/ub/main/foodsale/FoodOrderData;)V

    .line 500
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$5;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_CANCELFOOD_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 501
    new-array v2, v6, [[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "orderID"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct$5;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->currentOperatorData:Lcom/ub/main/foodsale/FoodOrderData;
    invoke-static {v4}, Lcom/ub/main/foodsale/FoodProduct;->access$9(Lcom/ub/main/foodsale/FoodProduct;)Lcom/ub/main/foodsale/FoodOrderData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ub/main/foodsale/FoodOrderData;->order_id()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->creatHttpProtocolPostString([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct$5;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct$5;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    .line 503
    const-string v5, "\u6b63\u5728\u9000\u8ba2\u8ba2\u5355..."

    .line 500
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 504
    return-void
.end method
