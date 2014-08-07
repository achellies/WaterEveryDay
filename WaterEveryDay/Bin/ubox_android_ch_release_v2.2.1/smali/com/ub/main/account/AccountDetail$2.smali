.class Lcom/ub/main/account/AccountDetail$2;
.super Ljava/lang/Object;
.source "AccountDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountDetail;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountDetail;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 124
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    #getter for: Lcom/ub/main/account/AccountDetail;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/ub/main/account/AccountDetail;->access$0(Lcom/ub/main/account/AccountDetail;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    iget v1, v1, Lcom/ub/main/account/AccountDetail;->totalnum:I

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    #getter for: Lcom/ub/main/account/AccountDetail;->pageIndex:I
    invoke-static {v0}, Lcom/ub/main/account/AccountDetail;->access$1(Lcom/ub/main/account/AccountDetail;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/ub/main/account/AccountDetail;->pageIndex:I
    invoke-static {v0, v1}, Lcom/ub/main/account/AccountDetail;->access$2(Lcom/ub/main/account/AccountDetail;I)V

    .line 127
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    #calls: Lcom/ub/main/account/AccountDetail;->loadInComeList()V
    invoke-static {v0}, Lcom/ub/main/account/AccountDetail;->access$3(Lcom/ub/main/account/AccountDetail;)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    #getter for: Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/ub/main/account/AccountDetail;->access$4(Lcom/ub/main/account/AccountDetail;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail$2;->this$0:Lcom/ub/main/account/AccountDetail;

    #getter for: Lcom/ub/main/account/AccountDetail;->line:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/ub/main/account/AccountDetail;->access$5(Lcom/ub/main/account/AccountDetail;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
