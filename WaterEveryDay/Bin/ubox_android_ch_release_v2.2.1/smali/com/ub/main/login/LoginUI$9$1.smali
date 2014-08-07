.class Lcom/ub/main/login/LoginUI$9$1;
.super Ljava/lang/Object;
.source "LoginUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/login/LoginUI$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ub/main/login/LoginUI$9;


# direct methods
.method constructor <init>(Lcom/ub/main/login/LoginUI$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/login/LoginUI$9$1;->this$1:Lcom/ub/main/login/LoginUI$9;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ub/main/login/LoginUI$9$1;->this$1:Lcom/ub/main/login/LoginUI$9;

    #getter for: Lcom/ub/main/login/LoginUI$9;->this$0:Lcom/ub/main/login/LoginUI;
    invoke-static {v0}, Lcom/ub/main/login/LoginUI$9;->access$0(Lcom/ub/main/login/LoginUI$9;)Lcom/ub/main/login/LoginUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ub/main/login/LoginUI;->finish()V

    .line 313
    return-void
.end method
