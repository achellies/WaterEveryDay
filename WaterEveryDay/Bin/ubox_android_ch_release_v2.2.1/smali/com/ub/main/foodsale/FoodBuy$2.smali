.class Lcom/ub/main/foodsale/FoodBuy$2;
.super Ljava/lang/Object;
.source "FoodBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodBuy;->doOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodBuy;

.field private final synthetic val$tade_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodBuy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    iput-object p2, p0, Lcom/ub/main/foodsale/FoodBuy$2;->val$tade_type:Ljava/lang/String;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodBuy;->access$0(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->order_product_num:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodBuy;->access$1(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    const-string v1, "\u4ea7\u54c1\u4fe1\u606f\u9519\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9\u5546\u54c1!"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 351
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->order_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodBuy;->access$2(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #calls: Lcom/ub/main/foodsale/FoodBuy;->doPay()V
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodBuy;->access$3(Lcom/ub/main/foodsale/FoodBuy;)V

    goto :goto_0

    .line 327
    :cond_2
    const-string v3, ""

    .line 328
    .local v3, couponId:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodBuy;->coupon:Lcom/ub/main/foodsale/FoodCoupon;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v3

    .line 331
    :cond_3
    const-string v4, ""

    .line 332
    .local v4, activityId:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    if-eqz v0, :cond_4

    .line 333
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    iget-object v0, v0, Lcom/ub/main/foodsale/FoodBuy;->promotion:Lcom/ub/main/foodsale/FoodPromotion;

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodPromotion;->id()Ljava/lang/String;

    move-result-object v4

    .line 340
    :cond_4
    const-string v5, ""

    .line 341
    .local v5, type:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->buyOrOrder:Z
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodBuy;->access$4(Lcom/ub/main/foodsale/FoodBuy;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    const-string v5, "2"

    .line 347
    :goto_1
    iget-object v12, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    sget-object v13, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_FOOD_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 348
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->order_product_id:Ljava/lang/String;
    invoke-static {v7}, Lcom/ub/main/foodsale/FoodBuy;->access$0(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->order_product_num:Ljava/lang/String;
    invoke-static {v7}, Lcom/ub/main/foodsale/FoodBuy;->access$1(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    const-string v1, "10004"

    .line 349
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->ubox_saleMachine_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodBuy;->access$5(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/ub/main/foodsale/FoodBuy$2;->val$tade_type:Ljava/lang/String;

    iget-object v7, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    #getter for: Lcom/ub/main/foodsale/FoodBuy;->unique:Ljava/lang/String;
    invoke-static {v7}, Lcom/ub/main/foodsale/FoodBuy;->access$6(Lcom/ub/main/foodsale/FoodBuy;)Ljava/lang/String;

    move-result-object v7

    .line 348
    invoke-static/range {v0 .. v7}, Lcom/ub/main/util/NetConfig;->createFOOD_foodorder([[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    iget-object v9, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    iget-object v10, p0, Lcom/ub/main/foodsale/FoodBuy$2;->this$0:Lcom/ub/main/foodsale/FoodBuy;

    const-string v11, "\u6b63\u5728\u4e0b\u5355..."

    move-object v6, v12

    move-object v7, v13

    .line 347
    invoke-virtual/range {v6 .. v11}, Lcom/ub/main/foodsale/FoodBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_5
    const-string v5, "1"

    goto :goto_1
.end method
