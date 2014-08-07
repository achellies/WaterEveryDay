.class Lcom/ub/main/account/RechargeActivity$3;
.super Ljava/lang/Object;
.source "RechargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/RechargeActivity;->ZFClick(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/ub/main/account/RechargeActivity$3;->this$0:Lcom/ub/main/account/RechargeActivity;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$3;->this$0:Lcom/ub/main/account/RechargeActivity;

    const-string v1, "2"

    #calls: Lcom/ub/main/account/RechargeActivity;->doOrder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ub/main/account/RechargeActivity;->access$0(Lcom/ub/main/account/RechargeActivity;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$3;->this$0:Lcom/ub/main/account/RechargeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/ub/main/account/RechargeActivity;->pay_type:I
    invoke-static {v0, v1}, Lcom/ub/main/account/RechargeActivity;->access$1(Lcom/ub/main/account/RechargeActivity;I)V

    .line 155
    return-void
.end method
