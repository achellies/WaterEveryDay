.class Lcom/ub/main/foodsale/FoodProduct$3;
.super Ljava/lang/Object;
.source "FoodProduct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodProduct;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;

.field private final synthetic val$requestId:Lcom/ub/main/util/NetConfig$HttpRequestId;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodProduct;Lcom/ub/main/util/NetConfig$HttpRequestId;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$3;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iput-object p2, p0, Lcom/ub/main/foodsale/FoodProduct$3;->val$requestId:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$3;->val$requestId:Lcom/ub/main/util/NetConfig$HttpRequestId;

    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_CANCELFOOD_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$3;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETORDERFOOD_LIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 393
    const-string v2, "10004"

    const-string v3, "1"

    const-string v4, "10"

    invoke-static {v2, v3, v4}, Lcom/ub/main/util/NetConfig;->createFOOD_getOrderFoodList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v3, p0, Lcom/ub/main/foodsale/FoodProduct$3;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodProduct$3;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    .line 395
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 404
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$3;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/foodsale/FoodProduct;->setResult(I)V

    .line 402
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$3;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodProduct;->finish()V

    goto :goto_0
.end method
