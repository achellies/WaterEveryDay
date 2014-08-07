.class Lcom/ub/main/login/ForgetPswVerifycode$4;
.super Ljava/lang/Object;
.source "ForgetPswVerifycode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/ForgetPswVerifycode;->initControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/ForgetPswVerifycode;


# direct methods
.method constructor <init>(Lcom/ub/main/login/ForgetPswVerifycode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode$4;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$4;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    invoke-virtual {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->finish()V

    .line 225
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$4;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    const/4 v1, 0x0

    #setter for: Lcom/ub/main/login/ForgetPswVerifycode;->isRestStart:Z
    invoke-static {v0, v1}, Lcom/ub/main/login/ForgetPswVerifycode;->access$10(Lcom/ub/main/login/ForgetPswVerifycode;Z)V

    .line 226
    return-void
.end method
