.class public Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;,
        Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final LOGV:Z = false

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 137
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 138
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 139
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 346
    const v0, 0x7f0c07d8

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 348
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->finish()V

    .line 349
    return-void
.end method

.method private showPageOfText()V
    .locals 8

    .prologue
    .line 252
    const-string v4, "ro.config.license_path"

    const-string v5, "/system/etc/NOTICE.html.gz"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const-string v4, "SettingsLicenseActivity"

    const-string v5, "The system property for the license file is empty"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 282
    :goto_0
    return-void

    .line 259
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 261
    :cond_1
    const-string v4, "SettingsLicenseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "License file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto :goto_0

    .line 269
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "text/html"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v4, "android.intent.extra.TITLE"

    const v5, 0x7f0c07d7

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v4, "com.android.htmlviewer"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "SettingsLicenseActivity"

    const-string v5, "Failed to find viewer"

    invoke-static {v4, v5, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto :goto_0
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$WebChrome;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v7, v8, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    :cond_0
    const-string v7, "ro.config.license_path"

    const-string v8, "/system/etc/NOTICE.html.gz"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 152
    const-string v7, "SettingsLicenseActivity"

    const-string v8, "The system property for the license file is empty."

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 208
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 161
    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->setVisible(Z)V

    .line 165
    :try_start_0
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 176
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 177
    .local v4, "s":Landroid/webkit/WebSettings;
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 178
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 179
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 180
    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 181
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 183
    new-instance v7, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$1;

    invoke-direct {v7, p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$1;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 198
    const v7, 0x7f0c07d7

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 199
    .local v6, "title":Ljava/lang/CharSequence;
    const v7, 0x7f0c07d9

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 201
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-static {p0, v6, v2, v10, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    .line 202
    .local v3, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v3, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 203
    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 206
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v1, v8}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 166
    .end local v2    # "msg":Ljava/lang/CharSequence;
    .end local v3    # "pd":Landroid/app/ProgressDialog;
    .end local v4    # "s":Landroid/webkit/WebSettings;
    .end local v5    # "thread":Ljava/lang/Thread;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->showPageOfText()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 235
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 236
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 242
    :pswitch_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->finish()V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 214
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 219
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 220
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 221
    :cond_0
    return-void
.end method
