.class Lcom/ub/main/ubsale/UbBuy$4;
.super Ljava/lang/Object;
.source "UbBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/UbBuy;->doOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/UbBuy;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/UbBuy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    iput-object p2, p0, Lcom/ub/main/ubsale/UbBuy$4;->val$type:Ljava/lang/String;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 440
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbBuy;->access$0(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->order_product_num:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbBuy;->access$1(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    const-string v1, "\u4ea7\u54c1\u4fe1\u606f\u9519\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9\u5546\u54c1!"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    sput-boolean v7, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 460
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->order_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbBuy;->access$2(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #calls: Lcom/ub/main/ubsale/UbBuy;->doPay()V
    invoke-static {v0}, Lcom/ub/main/ubsale/UbBuy;->access$3(Lcom/ub/main/ubsale/UbBuy;)V

    goto :goto_0

    .line 452
    :cond_2
    const-string v4, ""

    .line 453
    .local v4, couponId:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    iget-object v0, v0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    iget-object v0, v0, Lcom/ub/main/ubsale/UbBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v4

    .line 456
    :cond_3
    iget-object v11, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    sget-object v6, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_FOR_UBOX_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 457
    iget-object v0, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/UbBuy;->access$4(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10000"

    .line 458
    new-array v2, v8, [[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v5, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->order_product_id:Ljava/lang/String;
    invoke-static {v5}, Lcom/ub/main/ubsale/UbBuy;->access$0(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->order_product_num:Ljava/lang/String;
    invoke-static {v5}, Lcom/ub/main/ubsale/UbBuy;->access$1(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    #getter for: Lcom/ub/main/ubsale/UbBuy;->ubox_saleMachine_id:Ljava/lang/String;
    invoke-static {v3}, Lcom/ub/main/ubsale/UbBuy;->access$4(Lcom/ub/main/ubsale/UbBuy;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/ub/main/ubsale/UbBuy$4;->val$type:Ljava/lang/String;

    .line 457
    invoke-static/range {v0 .. v5}, Lcom/ub/main/util/NetConfig;->creatOrderPostString(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    iget-object v8, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    iget-object v9, p0, Lcom/ub/main/ubsale/UbBuy$4;->this$0:Lcom/ub/main/ubsale/UbBuy;

    const-string v10, "\u6b63\u5728\u4e0b\u5355..."

    move-object v5, v11

    .line 456
    invoke-virtual/range {v5 .. v10}, Lcom/ub/main/ubsale/UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method
