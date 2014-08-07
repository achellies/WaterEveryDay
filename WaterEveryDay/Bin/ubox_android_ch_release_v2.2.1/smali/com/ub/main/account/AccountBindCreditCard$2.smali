.class Lcom/ub/main/account/AccountBindCreditCard$2;
.super Ljava/lang/Object;
.source "AccountBindCreditCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountBindCreditCard;->BankSelect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountBindCreditCard;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountBindCreditCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountBindCreditCard$2;->this$0:Lcom/ub/main/account/AccountBindCreditCard;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard$2;->this$0:Lcom/ub/main/account/AccountBindCreditCard;

    #setter for: Lcom/ub/main/account/AccountBindCreditCard;->bankID:I
    invoke-static {v0, p2}, Lcom/ub/main/account/AccountBindCreditCard;->access$0(Lcom/ub/main/account/AccountBindCreditCard;I)V

    .line 260
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard$2;->this$0:Lcom/ub/main/account/AccountBindCreditCard;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Lcom/ub/main/account/AccountBindCreditCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/ub/main/util/UIConfig;->bankList:[[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ub/main/account/AccountBindCreditCard$2;->this$0:Lcom/ub/main/account/AccountBindCreditCard;

    #getter for: Lcom/ub/main/account/AccountBindCreditCard;->bankID:I
    invoke-static {v2}, Lcom/ub/main/account/AccountBindCreditCard;->access$1(Lcom/ub/main/account/AccountBindCreditCard;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method
