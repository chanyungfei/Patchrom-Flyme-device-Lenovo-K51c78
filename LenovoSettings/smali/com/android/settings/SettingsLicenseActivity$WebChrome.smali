.class Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;
.super Landroid/webkit/WebChromeClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 331
    const-string v0, "SettingsLicenseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->access$200(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->access$200(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 336
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 337
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    # getter for: Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->access$300(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->setContentView(Landroid/view/View;)V

    .line 339
    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;->this$0:Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method
