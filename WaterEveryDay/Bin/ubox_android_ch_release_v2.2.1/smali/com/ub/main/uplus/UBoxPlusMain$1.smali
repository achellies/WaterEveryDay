.class Lcom/ub/main/uplus/UBoxPlusMain$1;
.super Ljava/lang/Object;
.source "UBoxPlusMain.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/uplus/UBoxPlusMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/uplus/UBoxPlusMain;


# direct methods
.method constructor <init>(Lcom/ub/main/uplus/UBoxPlusMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/uplus/UBoxPlusMain$1;->this$0:Lcom/ub/main/uplus/UBoxPlusMain;

    .line 317
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
    .line 337
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 321
    packed-switch p2, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 330
    :goto_0
    return-void

    .line 323
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain$1;->this$0:Lcom/ub/main/uplus/UBoxPlusMain;

    #getter for: Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;
    invoke-static {v0}, Lcom/ub/main/uplus/UBoxPlusMain;->access$0(Lcom/ub/main/uplus/UBoxPlusMain;)Lcom/ub/main/uplus/UPlusTaskAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/uplus/UPlusTaskAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
