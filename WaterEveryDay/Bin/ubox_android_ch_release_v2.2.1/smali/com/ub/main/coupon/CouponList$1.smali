.class Lcom/ub/main/coupon/CouponList$1;
.super Ljava/lang/Object;
.source "CouponList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/coupon/CouponList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/coupon/CouponList;


# direct methods
.method constructor <init>(Lcom/ub/main/coupon/CouponList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/coupon/CouponList$1;->this$0:Lcom/ub/main/coupon/CouponList;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList$1;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;
    invoke-static {v1}, Lcom/ub/main/coupon/CouponList;->access$0(Lcom/ub/main/coupon/CouponList;)Lcom/ub/main/coupon/CouponListAdapter;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ub/main/coupon/CouponListAdapter;->setSelected(I)V

    .line 149
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList$1;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;
    invoke-static {v1}, Lcom/ub/main/coupon/CouponList;->access$0(Lcom/ub/main/coupon/CouponList;)Lcom/ub/main/coupon/CouponListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ub/main/coupon/CouponListAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList$1;->this$0:Lcom/ub/main/coupon/CouponList;

    const-string v2, "-1"

    #setter for: Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ub/main/coupon/CouponList;->access$1(Lcom/ub/main/coupon/CouponList;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList$1;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->unuseableView:Landroid/view/View;
    invoke-static {v1}, Lcom/ub/main/coupon/CouponList;->access$2(Lcom/ub/main/coupon/CouponList;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    .local v0, img:Landroid/widget/ImageView;
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v1, p0, Lcom/ub/main/coupon/CouponList$1;->this$0:Lcom/ub/main/coupon/CouponList;

    #calls: Lcom/ub/main/coupon/CouponList;->back()V
    invoke-static {v1}, Lcom/ub/main/coupon/CouponList;->access$3(Lcom/ub/main/coupon/CouponList;)V

    .line 154
    return-void
.end method
