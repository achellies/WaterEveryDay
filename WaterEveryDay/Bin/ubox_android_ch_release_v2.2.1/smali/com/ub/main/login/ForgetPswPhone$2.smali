.class Lcom/ub/main/login/ForgetPswPhone$2;
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
    iput-object p1, p0, Lcom/ub/main/login/ForgetPswPhone$2;->this$0:Lcom/ub/main/login/ForgetPswPhone;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ub/main/login/ForgetPswPhone$2;->this$0:Lcom/ub/main/login/ForgetPswPhone;

    invoke-virtual {v0}, Lcom/ub/main/login/ForgetPswPhone;->finish()V

    .line 92
    return-void
.end method
