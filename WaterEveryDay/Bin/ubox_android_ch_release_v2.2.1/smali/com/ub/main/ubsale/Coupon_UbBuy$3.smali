.class Lcom/ub/main/ubsale/Coupon_UbBuy$3;
.super Ljava/lang/Object;
.source "Coupon_UbBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/Coupon_UbBuy;->doOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;


# direct methods
.method constructor <init>(Lcom/ub/main/ubsale/Coupon_UbBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 294
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$0(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_num:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$1(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    const-string v1, "\u4ea7\u54c1\u4fe1\u606f\u9519\u8bef,\u8bf7\u91cd\u65b0\u9009\u62e9\u5546\u54c1!"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    sput-boolean v5, Lcom/ub/main/util/NetConfig;->IS_BUY:Z

    .line 311
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->order_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$2(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #calls: Lcom/ub/main/ubsale/Coupon_UbBuy;->doPay()V
    invoke-static {v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$3(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v6, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    sget-object v7, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_FOR_UBOX_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 306
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->ubox_vmid:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$4(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, "10000"

    .line 308
    new-array v2, v8, [[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_id:Ljava/lang/String;
    invoke-static {v4}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$0(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->order_product_num:Ljava/lang/String;
    invoke-static {v4}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$1(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v3, v2, v5

    .line 309
    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->ubox_vmid:Ljava/lang/String;
    invoke-static {v3}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$4(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_id:Ljava/lang/String;
    invoke-static {v4}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$5(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    .line 306
    invoke-static/range {v0 .. v5}, Lcom/ub/main/util/NetConfig;->creatOrderPostString(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    iget-object v4, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$3;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    const-string v5, "\u6b63\u5728\u4e0b\u5355..."

    move-object v0, v6

    move-object v1, v7

    .line 305
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/Coupon_UbBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method
