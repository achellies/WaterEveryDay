.class Lcom/ub/main/login/ForgetPswVerifycode$3$1;
.super Ljava/lang/Object;
.source "ForgetPswVerifycode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/ForgetPswVerifycode$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ub/main/login/ForgetPswVerifycode$3;


# direct methods
.method constructor <init>(Lcom/ub/main/login/ForgetPswVerifycode$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode$3$1;->this$1:Lcom/ub/main/login/ForgetPswVerifycode$3;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 176
    return-void
.end method
