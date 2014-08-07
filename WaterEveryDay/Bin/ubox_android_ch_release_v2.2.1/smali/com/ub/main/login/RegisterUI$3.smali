.class Lcom/ub/main/login/RegisterUI$3;
.super Ljava/lang/Object;
.source "RegisterUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/RegisterUI;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/login/RegisterUI;


# direct methods
.method constructor <init>(Lcom/ub/main/login/RegisterUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/RegisterUI$3;->this$0:Lcom/ub/main/login/RegisterUI;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ub/main/login/RegisterUI$3;->this$0:Lcom/ub/main/login/RegisterUI;

    invoke-virtual {v0}, Lcom/ub/main/login/RegisterUI;->finish()V

    .line 205
    return-void
.end method
