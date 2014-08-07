.class Lcom/ub/main/movie/MovieBuy$4;
.super Ljava/lang/Object;
.source "MovieBuy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/MovieBuy;->doOrder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/MovieBuy;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    iput-object p2, p0, Lcom/ub/main/movie/MovieBuy$4;->val$type:Ljava/lang/String;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/ub/main/movie/MovieBuy;->access$0(Lcom/ub/main/movie/MovieBuy;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ub/main/movie/MovieBuy;->access$1(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$2(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$2(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 515
    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 516
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 517
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 531
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$2(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$2(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$3(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #calls: Lcom/ub/main/movie/MovieBuy;->doPay()V
    invoke-static {v0}, Lcom/ub/main/movie/MovieBuy;->access$4(Lcom/ub/main/movie/MovieBuy;)V

    goto :goto_0

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->cinema_code:Ljava/lang/String;
    invoke-static {v1}, Lcom/ub/main/movie/MovieBuy;->access$5(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->plan_code:Ljava/lang/String;
    invoke-static {v2}, Lcom/ub/main/movie/MovieBuy;->access$6(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->sid:Ljava/lang/String;
    invoke-static {v3}, Lcom/ub/main/movie/MovieBuy;->access$7(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->seat_list:Ljava/lang/String;
    invoke-static {v4}, Lcom/ub/main/movie/MovieBuy;->access$8(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->seat_layer:Ljava/lang/String;
    invoke-static {v5}, Lcom/ub/main/movie/MovieBuy;->access$9(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ub/main/movie/MovieBuy$4;->this$0:Lcom/ub/main/movie/MovieBuy;

    #getter for: Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;
    invoke-static {v6}, Lcom/ub/main/movie/MovieBuy;->access$2(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ub/main/movie/MovieBuy$4;->val$type:Ljava/lang/String;

    #calls: Lcom/ub/main/movie/MovieBuy;->reqestTicketsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/ub/main/movie/MovieBuy;->access$10(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
