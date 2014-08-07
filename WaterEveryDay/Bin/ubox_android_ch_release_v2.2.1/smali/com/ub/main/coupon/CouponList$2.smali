.class Lcom/ub/main/coupon/CouponList$2;
.super Ljava/lang/Object;
.source "CouponList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/coupon/CouponList;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/coupon/CouponList;


# direct methods
.method constructor <init>(Lcom/ub/main/coupon/CouponList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;
    invoke-static {v2}, Lcom/ub/main/coupon/CouponList;->access$0(Lcom/ub/main/coupon/CouponList;)Lcom/ub/main/coupon/CouponListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/ub/main/coupon/CouponListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/Coupon;

    .line 110
    .local v1, item:Lcom/ub/main/data/Coupon;
    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->unuseableView:Landroid/view/View;
    invoke-static {v2}, Lcom/ub/main/coupon/CouponList;->access$2(Lcom/ub/main/coupon/CouponList;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    .local v0, img:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v2, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/ub/main/coupon/CouponList;->couponId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/ub/main/coupon/CouponList;->access$1(Lcom/ub/main/coupon/CouponList;Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;
    invoke-static {v2}, Lcom/ub/main/coupon/CouponList;->access$0(Lcom/ub/main/coupon/CouponList;)Lcom/ub/main/coupon/CouponListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/ub/main/coupon/CouponListAdapter;->setSelected(I)V

    .line 115
    iget-object v2, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    #getter for: Lcom/ub/main/coupon/CouponList;->couponList_adapter:Lcom/ub/main/coupon/CouponListAdapter;
    invoke-static {v2}, Lcom/ub/main/coupon/CouponList;->access$0(Lcom/ub/main/coupon/CouponList;)Lcom/ub/main/coupon/CouponListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ub/main/coupon/CouponListAdapter;->notifyDataSetChanged()V

    .line 116
    iget-object v2, p0, Lcom/ub/main/coupon/CouponList$2;->this$0:Lcom/ub/main/coupon/CouponList;

    #calls: Lcom/ub/main/coupon/CouponList;->back()V
    invoke-static {v2}, Lcom/ub/main/coupon/CouponList;->access$3(Lcom/ub/main/coupon/CouponList;)V

    .line 118
    .end local v0           #img:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
