.class Lcom/ub/main/foodsale/FoodCouponList$3;
.super Ljava/lang/Object;
.source "FoodCouponList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/foodsale/FoodCouponList;->initView()V
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
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodCouponList;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodCouponList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const v3, 0x7f080085

    .line 132
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$0(Lcom/ub/main/foodsale/FoodCouponList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/foodsale/FoodCoupon;

    .line 134
    .local v1, item:Lcom/ub/main/foodsale/FoodCoupon;
    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->status()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$5(Lcom/ub/main/foodsale/FoodCouponList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCoupon;->id()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/ub/main/foodsale/FoodCouponList;->access$2(Lcom/ub/main/foodsale/FoodCouponList;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->setSelected(I)V

    .line 139
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->notifyDataSetChanged()V

    .line 140
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #calls: Lcom/ub/main/foodsale/FoodCouponList;->back()V
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$6(Lcom/ub/main/foodsale/FoodCouponList;)V

    .line 153
    .end local v0           #img:Landroid/widget/ImageView;
    .end local v1           #item:Lcom/ub/main/foodsale/FoodCoupon;
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/foodsale/FoodPromotion;

    .line 144
    .local v1, item:Lcom/ub/main/foodsale/FoodPromotion;
    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodPromotion;->status()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$5(Lcom/ub/main/foodsale/FoodCouponList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .restart local v0       #img:Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodPromotion;->id()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/ub/main/foodsale/FoodCouponList;->access$4(Lcom/ub/main/foodsale/FoodCouponList;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->setSelected(I)V

    .line 149
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodCouponList$3;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #calls: Lcom/ub/main/foodsale/FoodCouponList;->back()V
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$6(Lcom/ub/main/foodsale/FoodCouponList;)V

    goto :goto_0
.end method
