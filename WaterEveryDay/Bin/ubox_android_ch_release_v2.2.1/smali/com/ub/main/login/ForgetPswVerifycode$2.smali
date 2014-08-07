.class Lcom/ub/main/login/ForgetPswVerifycode$2;
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
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode$2;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswVerifycode$2;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    #calls: Lcom/ub/main/login/ForgetPswVerifycode;->resendCode()V
    invoke-static {v0}, Lcom/ub/main/login/ForgetPswVerifycode;->access$4(Lcom/ub/main/login/ForgetPswVerifycode;)V

    .line 165
    return-void
.end method
