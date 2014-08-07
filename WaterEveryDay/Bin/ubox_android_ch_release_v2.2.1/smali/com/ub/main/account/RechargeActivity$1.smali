.class Lcom/ub/main/account/RechargeActivity$1;
.super Ljava/lang/Object;
.source "RechargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/RechargeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/RechargeActivity;


# direct methods
.method constructor <init>(Lcom/ub/main/account/RechargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/RechargeActivity$1;->this$0:Lcom/ub/main/account/RechargeActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$1;->this$0:Lcom/ub/main/account/RechargeActivity;

    invoke-virtual {v0}, Lcom/ub/main/account/RechargeActivity;->finish()V

    .line 88
    return-void
.end method
