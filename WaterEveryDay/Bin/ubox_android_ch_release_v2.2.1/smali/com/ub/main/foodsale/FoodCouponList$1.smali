.class Lcom/ub/main/foodsale/FoodCouponList$1;
.super Ljava/lang/Object;
.source "FoodCouponList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodCouponList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodCouponList;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodCouponList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, -0x1

    .line 193
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->isYouhuiquan:Z
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$0(Lcom/ub/main/foodsale/FoodCouponList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->setSelected(I)V

    .line 195
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    const-string v2, "-1"

    #setter for: Lcom/ub/main/foodsale/FoodCouponList;->couponId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$2(Lcom/ub/main/foodsale/FoodCouponList;Ljava/lang/String;)V

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->unuseableView:Landroid/view/View;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$5(Lcom/ub/main/foodsale/FoodCouponList;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    .local v0, img:Landroid/widget/ImageView;
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #calls: Lcom/ub/main/foodsale/FoodCouponList;->back()V
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$6(Lcom/ub/main/foodsale/FoodCouponList;)V

    .line 206
    return-void

    .line 198
    .end local v0           #img:Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->setSelected(I)V

    .line 199
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v1}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->notifyDataSetChanged()V

    .line 200
    iget-object v1, p0, Lcom/ub/main/foodsale/FoodCouponList$1;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    const-string v2, "-1"

    #setter for: Lcom/ub/main/foodsale/FoodCouponList;->promotionid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/ub/main/foodsale/FoodCouponList;->access$4(Lcom/ub/main/foodsale/FoodCouponList;Ljava/lang/String;)V

    goto :goto_0
.end method
