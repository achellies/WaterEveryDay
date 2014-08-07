.class Lcom/ub/main/foodsale/FoodProduct$1;
.super Ljava/lang/Object;
.source "FoodProduct.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodProduct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$1;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    .line 686
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
    .line 706
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v0, 0x1

    .line 690
    packed-switch p2, :pswitch_data_0

    .line 696
    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 699
    :goto_0
    return-void

    .line 692
    :pswitch_0
    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    goto :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
