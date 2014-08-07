.class Lcom/ub/main/login/ForgetPswPhone$1;
.super Ljava/lang/Object;
.source "ForgetPswPhone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/ForgetPswPhone;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/ForgetPswPhone;


# direct methods
.method constructor <init>(Lcom/ub/main/login/ForgetPswPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswPhone$1;->this$0:Lcom/ub/main/login/ForgetPswPhone;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone$1;->this$0:Lcom/ub/main/login/ForgetPswPhone;

    iget-object v1, p0, Lcom/ub/main/login/ForgetPswPhone$1;->this$0:Lcom/ub/main/login/ForgetPswPhone;

    #getter for: Lcom/ub/main/login/ForgetPswPhone;->account_et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ub/main/login/ForgetPswPhone;->access$0(Lcom/ub/main/login/ForgetPswPhone;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/ub/main/login/ForgetPswPhone;->account:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/ub/main/login/ForgetPswPhone;->access$1(Lcom/ub/main/login/ForgetPswPhone;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone$1;->this$0:Lcom/ub/main/login/ForgetPswPhone;

    #calls: Lcom/ub/main/login/ForgetPswPhone;->sendCode()V
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswPhone;->access$2(Lcom/ub/main/login/ForgetPswPhone;)V

    .line 83
    return-void
.end method
