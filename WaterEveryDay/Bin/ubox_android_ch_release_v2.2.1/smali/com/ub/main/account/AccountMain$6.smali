.class Lcom/ub/main/account/AccountMain$6;
.super Ljava/lang/Object;
.source "AccountMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/account/AccountMain;->showDialogPhoneCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/account/AccountMain;


# direct methods
.method constructor <init>(Lcom/ub/main/account/AccountMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/account/AccountMain$6;->this$0:Lcom/ub/main/account/AccountMain;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:4001528528"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ub/main/account/AccountMain$6;->this$0:Lcom/ub/main/account/AccountMain;

    invoke-virtual {v1, v0}, Lcom/ub/main/account/AccountMain;->startActivity(Landroid/content/Intent;)V

    .line 607
    return-void
.end method
