.class Lcom/ub/main/movie/MovieBuy$8;
.super Ljava/lang/Object;
.source "MovieBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieBuy;->MobileEdit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieBuy;

.field private final synthetic val$txt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieBuy;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy$8;->this$0:Lcom/ub/main/movie/MovieBuy;

    iput-object p2, p0, Lcom/ub/main/movie/MovieBuy$8;->val$txt:Landroid/widget/EditText;

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v3, 0xbb8

    .line 739
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$8;->val$txt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, tel:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 741
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$8;->this$0:Lcom/ub/main/movie/MovieBuy;

    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 750
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-static {v0}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 745
    :cond_1
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$8;->this$0:Lcom/ub/main/movie/MovieBuy;

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$8;->this$0:Lcom/ub/main/movie/MovieBuy;

    #setter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/ub/main/movie/MovieBuy;->access$1(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$8;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ub/main/movie/MovieBuy;->access$0(Lcom/ub/main/movie/MovieBuy;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
