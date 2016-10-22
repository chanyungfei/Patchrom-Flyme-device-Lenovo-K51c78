.class Lcom/android/settings/CryptKeeperSettings$2$1;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeperSettings$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/CryptKeeperSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperSettings$2;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/CryptKeeperSettings$2$1;->this$1:Lcom/android/settings/CryptKeeperSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/android/settings/CryptKeeperSettings$2$1;->this$1:Lcom/android/settings/CryptKeeperSettings$2;

    iget-object v1, v1, Lcom/android/settings/CryptKeeperSettings$2;->this$0:Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeperSettings;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method
