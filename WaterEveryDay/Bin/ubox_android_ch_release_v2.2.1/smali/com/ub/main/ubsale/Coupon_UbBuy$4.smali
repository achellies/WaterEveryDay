.class Lcom/ub/main/ubsale/Coupon_UbBuy$4;
.super Ljava/lang/Object;
.source "Coupon_UbBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/ubsale/Coupon_UbBuy;->payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$4;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ub/main/ubsale/Coupon_UbBuy$4;->this$0:Lcom/ub/main/ubsale/Coupon_UbBuy;

    #calls: Lcom/ub/main/ubsale/Coupon_UbBuy;->goToGetProductActivity()V
    invoke-static {v0}, Lcom/ub/main/ubsale/Coupon_UbBuy;->access$6(Lcom/ub/main/ubsale/Coupon_UbBuy;)V

    .line 345
    return-void
.end method
