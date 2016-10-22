.class final Lcom/lenovo/settings/LenovoWirelessSettings$1;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "LenovoWirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/LenovoWirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 152
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "toggle_airplane"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v9, "wimax_settings"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v9, "toggle_nsd"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v3, 0x1

    .line 159
    .local v3, "isSecondaryUser":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 160
    const-string v9, "vpn_settings"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v9

    if-nez v9, :cond_1

    .line 165
    const-string v9, "toggle_nfc"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v9, "android_beam_settings"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v9, "android_nfc_settings"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    const-string v9, "mobile_network_settings"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v9, "manage_mobile_plan"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 179
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v9

    if-nez v9, :cond_2

    .line 180
    const-string v9, "sms_application"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 186
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "proxy_settings"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.mediatek.rcse.RCSE_SETTINGS"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 197
    .local v5, "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 198
    :cond_3
    const-string v8, "rcse_settings"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x112005b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 205
    .local v2, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v2, :cond_5

    .line 206
    :try_start_0
    const-string v8, "com.android.cellbroadcastreceiver"

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 208
    const/4 v2, 0x0

    .line 214
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    if-nez v2, :cond_7

    .line 215
    :cond_6
    const-string v8, "cell_broadcast_settings"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_7
    return-object v6

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isCellBroadcastAppLinkEnabled":Z
    .end local v3    # "isSecondaryUser":Z
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    move v3, v8

    .line 158
    goto :goto_0

    .line 211
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v3    # "isSecondaryUser":Z
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "rcseApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v1, 0x7f060050

    iput v1, v0, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 147
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
