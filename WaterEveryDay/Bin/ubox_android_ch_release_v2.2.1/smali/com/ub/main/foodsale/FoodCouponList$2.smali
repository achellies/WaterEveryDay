.class Lcom/ub/main/foodsale/FoodCouponList$2;
.super Ljava/lang/Object;
.source "FoodCouponList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodCouponList$2;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 494
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 473
    packed-switch p2, :pswitch_data_0

    .line 484
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 475
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList$2;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList$2;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->couponList_adapter:Lcom/ub/main/foodsale/FoodCouponListAdapter;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodCouponList;->access$1(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodCouponListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodCouponListAdapter;->notifyDataSetChanged()V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList$2;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodCouponList$2;->this$0:Lcom/ub/main/foodsale/FoodCouponList;

    #getter for: Lcom/ub/main/foodsale/FoodCouponList;->foodPromotionAdapter:Lcom/ub/main/foodsale/FoodPromotionListAdapter;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodCouponList;->access$3(Lcom/ub/main/foodsale/FoodCouponList;)Lcom/ub/main/foodsale/FoodPromotionListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
