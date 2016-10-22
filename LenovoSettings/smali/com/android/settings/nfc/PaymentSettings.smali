.class public Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PaymentSettings"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaymentBackend:Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 175
    new-instance v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 143
    .local v0, "appInfo":Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->refresh()V

    .line 148
    .end local v0    # "appInfo":Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

    .line 65
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 166
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "payment_service_search_uri"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "searchUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    const v2, 0x7f0c0bb3

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 171
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 173
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 117
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0b00c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, "learnMore":Landroid/widget/TextView;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 160
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 161
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 234
    instance-of v0, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 152
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 154
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->refresh()V

    .line 155
    return-void
.end method

.method public refresh()V
    .locals 14

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    .line 71
    .local v8, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 74
    .local v10, "screen":Landroid/preference/PreferenceScreen;
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

    invoke-virtual {v11}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v1

    .line 75
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;

    .line 78
    .local v0, "appInfo":Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v9, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11, v0, p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;)V

    .line 80
    .local v9, "preference":Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 82
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 85
    :cond_0
    const-string v11, "PaymentSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t load banner drawable of service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v0    # "appInfo":Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "preference":Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings$PaymentAppPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b00c0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 90
    .local v3, "emptyText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b00c1

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 91
    .local v7, "learnMore":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b00bf

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 92
    .local v2, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 93
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 110
    :goto_1
    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 111
    return-void

    .line 98
    :cond_2
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 99
    .local v4, "foreground":Landroid/preference/CheckBoxPreference;
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->mPaymentBackend:Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;

    invoke-virtual {v11}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v5

    .line 100
    .local v5, "foregroundMode":Z
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 102
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 105
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
