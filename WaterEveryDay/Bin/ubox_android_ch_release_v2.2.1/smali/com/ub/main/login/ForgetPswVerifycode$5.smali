.class Lcom/ub/main/login/ForgetPswVerifycode$5;
.super Ljava/lang/Object;
.source "ForgetPswVerifycode.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswVerifycode$5;->this$0:Lcom/ub/main/login/ForgetPswVerifycode;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method
