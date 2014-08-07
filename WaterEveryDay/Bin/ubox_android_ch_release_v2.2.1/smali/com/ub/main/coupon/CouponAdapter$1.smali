.class Lcom/ub/main/coupon/CouponAdapter$1;
.super Ljava/lang/Object;
.source "CouponAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/coupon/CouponAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/coupon/CouponAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/ub/main/coupon/CouponAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/coupon/CouponAdapter$1;->this$0:Lcom/ub/main/coupon/CouponAdapter;

    iput p2, p0, Lcom/ub/main/coupon/CouponAdapter$1;->val$pos:I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/ub/main/coupon/CouponAdapter$1;->this$0:Lcom/ub/main/coupon/CouponAdapter;

    iget-object v2, v2, Lcom/ub/main/coupon/CouponAdapter;->datas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/ub/main/coupon/CouponAdapter$1;->val$pos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/Coupon;

    .line 117
    .local v1, subdata:Lcom/ub/main/data/Coupon;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/ub/main/coupon/CouponAdapter$1;->this$0:Lcom/ub/main/coupon/CouponAdapter;

    #getter for: Lcom/ub/main/coupon/CouponAdapter;->context:Landroid/app/Activity;
    invoke-static {v2}, Lcom/ub/main/coupon/CouponAdapter;->access$0(Lcom/ub/main/coupon/CouponAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/ub/main/ubsale/UbHome;

    const/16 v4, 0x64

    invoke-static {v2, v3, v4, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 120
    return-void
.end method
