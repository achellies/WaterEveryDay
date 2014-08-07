.class Lcom/ub/main/util/Tool$1;
.super Ljava/lang/Object;
.source "Tool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/util/Tool;->forwardNetSetDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/util/Tool$1;->val$context:Landroid/app/Activity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ub/main/util/Tool$1;->val$context:Landroid/app/Activity;

    .line 225
    new-instance v1, Landroid/content/Intent;

    .line 226
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    .line 225
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method
