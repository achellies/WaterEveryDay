.class Lcom/ub/main/account/AccountCreditCard$2;
.super Ljava/lang/Object;
.source "AccountCreditCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountCreditCard;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountCreditCard;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountCreditCard;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountCreditCard$2;->this$0:Lcom/ub/main/account/AccountCreditCard;

    iput-object p2, p0, Lcom/ub/main/account/AccountCreditCard$2;->val$v:Landroid/view/View;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/account/AccountCreditCard$2;)Lcom/ub/main/account/AccountCreditCard;
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ub/main/account/AccountCreditCard$2;->this$0:Lcom/ub/main/account/AccountCreditCard;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 345
    packed-switch p2, :pswitch_data_0

    .line 366
    :goto_0
    :pswitch_0
    return-void

    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/ub/main/account/AccountCreditCard$2;->this$0:Lcom/ub/main/account/AccountCreditCard;

    iget-object v0, p0, Lcom/ub/main/account/AccountCreditCard$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/ub/main/account/AccountCreditCard;->setDefaultAccount(I)V
    invoke-static {v1, v0}, Lcom/ub/main/account/AccountCreditCard;->access$0(Lcom/ub/main/account/AccountCreditCard;I)V

    goto :goto_0

    .line 350
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ub/main/account/AccountCreditCard$2;->this$0:Lcom/ub/main/account/AccountCreditCard;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    const-string v1, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u8d26\u6237\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 352
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/account/AccountCreditCard$2$1;

    iget-object v3, p0, Lcom/ub/main/account/AccountCreditCard$2;->val$v:Landroid/view/View;

    invoke-direct {v2, p0, v3}, Lcom/ub/main/account/AccountCreditCard$2$1;-><init>(Lcom/ub/main/account/AccountCreditCard$2;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
