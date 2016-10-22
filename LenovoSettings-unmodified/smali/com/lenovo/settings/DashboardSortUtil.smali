.class public final Lcom/lenovo/settings/DashboardSortUtil;
.super Ljava/lang/Object;
.source "DashboardSortUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/DashboardSortUtil$1;,
        Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;
    }
.end annotation


# static fields
.field public static final ACTION_DASHBOARD_INDEX_CLEARED:Ljava/lang/String; = "com.android.settings.ACTION_DASHBOARD_INDEx_CLEARED"

.field public static final KEY_DASHBOARD_INDEX:Ljava/lang/String; = "dashboard_index"

.field public static final KEY_DASHBOARD_SORT_INDEX:Ljava/lang/String; = "dashboard_sort_index"

.field public static final KEY_DASHBOARD_TIMESTAMP:Ljava/lang/String; = "dashboard_timestamp"

.field public static final KEY_UPLOAD_TIMESTAMP:Ljava/lang/String; = "dashboard_upload_timestamp"

.field private static final LOG_TAG:Ljava/lang/String; = "DashboardSortUtil"

.field public static final PREF_FILE:Ljava/lang/String; = "dashboard_index"

.field public static final TOKEN_ABOUT:Ljava/lang/String; = "about"

.field public static final TOKEN_ACCESSIBILITY:Ljava/lang/String; = "accessibility"

.field public static final TOKEN_CATEGORY:Ljava/lang/String; = "section"

.field public static final TOKEN_DEVELOP:Ljava/lang/String; = "development"

.field private static sInstance:Lcom/lenovo/settings/DashboardSortUtil;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mDashboardIndexCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardIndexPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mAppContext:Landroid/content/Context;

    .line 56
    const-string v0, "dashboard_index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    .line 57
    invoke-direct {p0}, Lcom/lenovo/settings/DashboardSortUtil;->initDashboardIndexCache()V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/settings/DashboardSortUtil;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/DashboardSortUtil;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/settings/DashboardSortUtil;->trackDashboardSortEvents()Z

    move-result v0

    return v0
.end method

.method private buildJsonString(Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;)Ljava/lang/String;
    .locals 5
    .param p1, "adapter"    # Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .prologue
    .line 191
    if-eqz p1, :cond_1

    .line 192
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 194
    .local v3, "ja":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getCount()I

    move-result v0

    .line 195
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 196
    invoke-virtual {p1, v2}, Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 197
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, v1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "ja":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private buildJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildSortJsonString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lcom/lenovo/settings/DashboardSortUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/settings/DashboardSortUtil;->sInstance:Lcom/lenovo/settings/DashboardSortUtil;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/lenovo/settings/DashboardSortUtil;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/DashboardSortUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/settings/DashboardSortUtil;->sInstance:Lcom/lenovo/settings/DashboardSortUtil;

    .line 47
    :cond_0
    sget-object v0, Lcom/lenovo/settings/DashboardSortUtil;->sInstance:Lcom/lenovo/settings/DashboardSortUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initDashboardIndexCache()V
    .locals 8

    .prologue
    .line 61
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    .line 63
    iget-object v5, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    const-string v6, "dashboard_sort_index"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "jsonString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const-string v5, "DashboardSortUtil"

    const-string v6, "[initDashboardIndexCache] dashboard_sort_index is empty"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private isDashboardIndexNeedUpload()Z
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    .line 244
    iget-object v8, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    const-string v9, "dashboard_timestamp"

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 245
    .local v2, "savedTime":J
    iget-object v8, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    const-string v9, "dashboard_upload_timestamp"

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 247
    .local v4, "uploadedTime":J
    cmp-long v8, v2, v10

    if-gtz v8, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v6

    .line 250
    :cond_1
    cmp-long v8, v4, v10

    if-gtz v8, :cond_2

    move v6, v7

    .line 252
    goto :goto_0

    .line 255
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 256
    .local v0, "calendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 257
    .local v1, "calendarUpload":Ljava/util/Calendar;
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 260
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 267
    :cond_3
    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    move v6, v7

    .line 268
    goto :goto_0
.end method

.method private saveDragListIndex(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "index":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dashboard_index"

    invoke-direct {p0, p1}, Lcom/lenovo/settings/DashboardSortUtil;->buildJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private trackDashboardSortEvents()Z
    .locals 6

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/lenovo/settings/DashboardSortUtil;->isDashboardIndexNeedUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/lenovo/settings/LPSReaper;->trackHeaderSort(Ljava/util/HashMap;)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 232
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dashboard_sort_index"

    invoke-direct {p0}, Lcom/lenovo/settings/DashboardSortUtil;->buildSortJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dashboard_upload_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    monitor-exit v1

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDashboardIndexPref()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.ACTION_DASHBOARD_INDEx_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/settings/DashboardSortUtil;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 91
    return-void
.end method

.method public hideDevelopmentSettings()V
    .locals 6

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/lenovo/settings/DashboardSortUtil;->parseJsonToList()Ljava/util/List;

    move-result-object v4

    .line 148
    .local v4, "sortedDashboard":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 149
    .local v3, "size":I
    const/4 v5, 0x2

    if-le v3, v5, :cond_0

    .line 150
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "lastItem":Ljava/lang/String;
    add-int/lit8 v5, v3, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "nextToLastItem":Ljava/lang/String;
    const-string v5, "development"

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    invoke-direct {p0, v4}, Lcom/lenovo/settings/DashboardSortUtil;->saveDragListIndex(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "lastItem":Ljava/lang/String;
    .end local v2    # "nextToLastItem":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parseJsonToList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 98
    iget-object v8, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    const-string v9, "dashboard_index"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "jsonString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    const-string v8, "DashboardSortUtil"

    const-string v9, "[parseJsonToList] dashboard_index is empty"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 118
    :cond_0
    :goto_0
    return-object v2

    .line 104
    :cond_1
    const/4 v3, 0x0

    .line 106
    .local v3, "ja":Lorg/json/JSONArray;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v3    # "ja":Lorg/json/JSONArray;
    .local v4, "ja":Lorg/json/JSONArray;
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "index":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 110
    .local v6, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 111
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v8, "DashboardSortUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[parseJsonToList] header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "i":I
    .end local v2    # "index":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "ja":Lorg/json/JSONArray;
    .end local v6    # "size":I
    .restart local v3    # "ja":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v7

    .line 118
    goto :goto_0

    .line 116
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "ja":Lorg/json/JSONArray;
    .restart local v4    # "ja":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "ja":Lorg/json/JSONArray;
    .restart local v3    # "ja":Lorg/json/JSONArray;
    goto :goto_2
.end method

.method public saveDragListIndex(Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dashboard_index"

    invoke-direct {p0, p1}, Lcom/lenovo/settings/DashboardSortUtil;->buildJsonString(Lcom/android/settings/dashboard/DashboardSummary$HeaderAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dashboard_sort_index"

    invoke-direct {p0}, Lcom/lenovo/settings/DashboardSortUtil;->buildSortJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dashboard_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public showDevelopmentSettings()V
    .locals 7

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/lenovo/settings/DashboardSortUtil;->parseJsonToList()Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "sortedDashboard":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 127
    .local v3, "size":I
    const/4 v5, 0x2

    if-le v3, v5, :cond_0

    .line 128
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "lastItem":Ljava/lang/String;
    add-int/lit8 v5, v3, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "nextToLastItem":Ljava/lang/String;
    const-string v5, "about"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "accessibility"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    add-int/lit8 v5, v3, -0x1

    const-string v6, "development"

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 138
    :goto_0
    invoke-direct {p0, v4}, Lcom/lenovo/settings/DashboardSortUtil;->saveDragListIndex(Ljava/util/List;)V

    .line 143
    .end local v1    # "lastItem":Ljava/lang/String;
    .end local v2    # "nextToLastItem":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_0
    :goto_1
    return-void

    .line 136
    .restart local v1    # "lastItem":Ljava/lang/String;
    .restart local v2    # "nextToLastItem":Ljava/lang/String;
    .restart local v3    # "size":I
    :cond_1
    const-string v5, "development"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1    # "lastItem":Ljava/lang/String;
    .end local v2    # "nextToLastItem":Ljava/lang/String;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateHeaderIndex(Ljava/lang/String;I)V
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "newIndex"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/settings/DashboardSortUtil;->mDashboardIndexCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public uploadDashboardSortEvents()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;-><init>(Lcom/lenovo/settings/DashboardSortUtil;Lcom/lenovo/settings/DashboardSortUtil$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/DashboardSortUtil$UploadDashboardIndexTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method
