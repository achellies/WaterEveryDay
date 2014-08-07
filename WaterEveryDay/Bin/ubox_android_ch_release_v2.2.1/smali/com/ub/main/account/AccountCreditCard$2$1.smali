.class Lcom/ub/main/account/AccountCreditCard$2$1;
.super Ljava/lang/Object;
.source "AccountCreditCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountCreditCard$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ub/main/account/AccountCreditCard$2;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountCreditCard$2;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountCreditCard$2$1;->this$1:Lcom/ub/main/account/AccountCreditCard$2;

    iput-object p2, p0, Lcom/ub/main/account/AccountCreditCard$2$1;->val$v:Landroid/view/View;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/ub/main/account/AccountCreditCard$2$1;->this$1:Lcom/ub/main/account/AccountCreditCard$2;

    #getter for: Lcom/ub/main/account/AccountCreditCard$2;->this$0:Lcom/ub/main/account/AccountCreditCard;
    invoke-static {v0}, Lcom/ub/main/account/AccountCreditCard$2;->access$0(Lcom/ub/main/account/AccountCreditCard$2;)Lcom/ub/main/account/AccountCreditCard;

    move-result-object v1

    iget-object v0, p0, Lcom/ub/main/account/AccountCreditCard$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/ub/main/account/AccountCreditCard;->deleteAccount(I)V
    invoke-static {v1, v0}, Lcom/ub/main/account/AccountCreditCard;->access$1(Lcom/ub/main/account/AccountCreditCard;I)V

    .line 356
    return-void
.end method
