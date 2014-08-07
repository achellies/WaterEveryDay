.class Lcom/ub/main/account/AccountCreditCard$1;
.super Ljava/lang/Object;
.source "AccountCreditCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountCreditCard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountCreditCard;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountCreditCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountCreditCard$1;->this$0:Lcom/ub/main/account/AccountCreditCard;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ub/main/account/AccountCreditCard$1;->this$0:Lcom/ub/main/account/AccountCreditCard;

    invoke-virtual {v0}, Lcom/ub/main/account/AccountCreditCard;->finish()V

    .line 115
    return-void
.end method
