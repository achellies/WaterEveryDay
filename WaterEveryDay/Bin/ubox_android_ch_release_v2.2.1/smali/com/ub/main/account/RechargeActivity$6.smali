.class Lcom/ub/main/account/RechargeActivity$6;
.super Ljava/lang/Object;
.source "RechargeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/RechargeActivity;->payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
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
    iput-object p1, p0, Lcom/ub/main/account/RechargeActivity$6;->this$0:Lcom/ub/main/account/RechargeActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ub/main/account/RechargeActivity$6;->this$0:Lcom/ub/main/account/RechargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ub/main/account/RechargeActivity;->BackTolastActivity(Landroid/view/View;)V

    .line 230
    return-void
.end method
