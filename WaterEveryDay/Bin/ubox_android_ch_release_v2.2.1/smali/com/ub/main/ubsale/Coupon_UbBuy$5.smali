.class Lcom/ub/main/ubsale/Coupon_UbBuy$5;
.super Ljava/lang/Object;
.source "Coupon_UbBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/Coupon_UbBuy;->HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$5;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v1, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$5;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #getter for: Lcom/ub/main/ubsale/Coupon_UbBuy;->coupon_id:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$5(Lcom/ub/main/ubsale/Coupon_UbBuy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$5;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    const-class v2, Lcom/ub/main/ubsale/UbHome;

    invoke-static {v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 475
    return-void
.end method
