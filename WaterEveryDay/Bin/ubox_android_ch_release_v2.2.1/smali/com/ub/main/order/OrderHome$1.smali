.class Lcom/ub/main/order/OrderHome$1;
.super Ljava/lang/Object;
.source "OrderHome.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/order/OrderHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/order/OrderHome;


# direct methods
.method constructor <init>(Lcom/ub/main/order/OrderHome;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/order/OrderHome$1;->this$0:Lcom/ub/main/order/OrderHome;

    .line 582
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
    .line 602
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 586
    packed-switch p2, :pswitch_data_0

    .line 592
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 595
    :goto_0
    return-void

    .line 588
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/ub/main/order/OrderHome$1;->this$0:Lcom/ub/main/order/OrderHome;

    #getter for: Lcom/ub/main/order/OrderHome;->adapter:Lcom/ub/main/order/OrderAdapter;
    invoke-static {v0}, Lcom/ub/main/order/OrderHome;->access$0(Lcom/ub/main/order/OrderHome;)Lcom/ub/main/order/OrderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/order/OrderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
