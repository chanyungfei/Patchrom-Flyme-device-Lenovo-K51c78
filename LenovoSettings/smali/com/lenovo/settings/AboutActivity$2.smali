.class Lcom/lenovo/settings/AboutActivity$2;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/AboutActivity;->checkSecurityInfoAndShowDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/AboutActivity;

.field final synthetic val$mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/AboutActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/lenovo/settings/AboutActivity$2;->this$0:Lcom/lenovo/settings/AboutActivity;

    iput-object p2, p0, Lcom/lenovo/settings/AboutActivity$2;->val$mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lenovo/settings/AboutActivity$2;->val$mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.android.settings.DeviceInfoSettings.safety_information"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void
.end method
