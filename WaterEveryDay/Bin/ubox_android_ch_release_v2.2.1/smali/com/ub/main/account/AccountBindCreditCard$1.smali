.class Lcom/ub/main/account/AccountBindCreditCard$1;
.super Ljava/lang/Object;
.source "AccountBindCreditCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountBindCreditCard;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/ub/main/account/AccountBindCreditCard$1;->this$0:Lcom/ub/main/account/AccountBindCreditCard;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ub/main/account/AccountBindCreditCard$1;->this$0:Lcom/ub/main/account/AccountBindCreditCard;

    invoke-virtual {v0}, Lcom/ub/main/account/AccountBindCreditCard;->finish()V

    .line 118
    return-void
.end method
