.class public Lcom/lenovo/settings/Open4GEnabler;
.super Ljava/lang/Object;
.source "Open4GEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/Open4GEnabler$LContentObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreferrednetworkModeChangeObserver:Landroid/content/BroadcastReceiver;

.field mSubIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/lenovo/settings/Open4GEnabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/settings/Open4GEnabler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    .line 61
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 62
    const/4 v5, 0x0

    .line 63
    .local v5, "mSubIds":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    new-instance v11, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;

    invoke-direct {v11, p0}, Lcom/lenovo/settings/Open4GEnabler$LContentObserver;-><init>(Lcom/lenovo/settings/Open4GEnabler;)V

    iput-object v11, p0, Lcom/lenovo/settings/Open4GEnabler;->mPreferrednetworkModeChangeObserver:Landroid/content/BroadcastReceiver;

    .line 64
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 65
    const/4 v6, 0x0

    .line 67
    .local v6, "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v11, "android.telephony.SubscriptionManager"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 71
    :goto_0
    const-string v11, "getActiveSubscriptionInfoList"

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Lcom/android/settings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 73
    .local v7, "met":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 76
    .local v2, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v11, 0x0

    :try_start_1
    aget-object v11, v2, v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/List;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_1
    if-nez v5, :cond_1

    .line 101
    .end local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v6    # "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "met":Ljava/lang/reflect/Method;
    :cond_0
    :goto_2
    return-void

    .line 68
    .restart local v6    # "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v7    # "met":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 85
    const/4 v8, 0x0

    .line 86
    .local v8, "soltId":Ljava/lang/reflect/Field;
    :try_start_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 87
    .local v10, "subInfo":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "clazz":Ljava/lang/Class;
    const-string v11, "mId"

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 89
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 90
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 91
    .local v9, "subId":I
    if-ltz v9, :cond_2

    .line 92
    invoke-direct {p0, v9}, Lcom/lenovo/settings/Open4GEnabler;->mtkRegisterContentObserver(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v9    # "subId":I
    .end local v10    # "subInfo":Ljava/lang/Object;
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 98
    .end local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v4    # "i":I
    .end local v6    # "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "met":Ljava/lang/reflect/Method;
    .end local v8    # "soltId":Ljava/lang/reflect/Field;
    :cond_3
    const-string v11, "preferred_network_mode"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_2

    .line 94
    .restart local v2    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v4    # "i":I
    .restart local v6    # "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "met":Ljava/lang/reflect/Method;
    .restart local v8    # "soltId":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v11

    goto :goto_4
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/settings/Open4GEnabler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/Open4GEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/Open4GEnabler;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/Open4GEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/Open4GEnabler;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lenovo/settings/Open4GEnabler;->handleUpdateState()V

    return-void
.end method

.method private getTelephlyMode()I
    .locals 11

    .prologue
    const/4 v7, -0x1

    .line 230
    const/4 v5, -0x1

    .line 231
    .local v5, "networkMode":I
    const/4 v2, -0x1

    .line 233
    .local v2, "id":I
    const/4 v3, 0x0

    .line 235
    .local v3, "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "android.telephony.SubscriptionManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 239
    :goto_0
    const-string v6, "getDefaultDataSubId"

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Lcom/android/settings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 242
    .local v4, "met":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 245
    .local v0, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v0, v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 250
    :goto_1
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    if-ne v2, v7, :cond_0

    move v6, v7

    .line 272
    :goto_2
    return v6

    .line 236
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v4    # "met":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v4    # "met":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lenovo/settings/Open4GEnabler;->isCTCard(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    iget-object v6, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lte_on_cdma_rat_mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    :cond_1
    :goto_3
    move v6, v5

    .line 272
    goto :goto_2

    .line 259
    :cond_2
    iget-object v6, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preferred_network_mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    .line 265
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/lenovo/settings/Open4GEnabler;->mSubIds:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lenovo/settings/Open4GEnabler;->mSubIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 266
    iget-object v6, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    iget-object v6, p0, Lcom/lenovo/settings/Open4GEnabler;->mSubIds:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubInfoRecord;

    iget v6, v6, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-static {v7, v8, v6}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    goto :goto_3

    .line 270
    :catch_2
    move-exception v6

    goto :goto_3
.end method

.method private handleUpdateState()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v4, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 155
    .local v0, "isAirplaneMode":Z
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/settings/Open4GEnabler;->getTelephlyMode()I

    move-result v1

    .line 156
    .local v1, "teleMode":I
    sget-object v4, Lcom/lenovo/settings/Open4GEnabler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "teleMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-nez v0, :cond_0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 168
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "teleMode":I
    :cond_1
    move v0, v3

    .line 154
    goto :goto_0

    .line 161
    .restart local v0    # "isAirplaneMode":Z
    .restart local v1    # "teleMode":I
    :cond_2
    const/16 v4, 0x14

    if-eq v1, v4, :cond_3

    const/16 v4, 0xa

    if-eq v1, v4, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v7, :cond_3

    const/16 v4, 0x16

    if-eq v1, v4, :cond_3

    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/settings/Open4GEnabler;->isCTCard()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 164
    :cond_3
    iget-object v3, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 166
    :cond_4
    iget-object v2, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method private mtkRegisterContentObserver(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/Open4GEnabler;->isCTCard(I)Z

    move-result v0

    .line 144
    .local v0, "isCt":Z
    const/4 v1, 0x0

    .line 145
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lte_on_cdma_rat_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public isCTCard()Z
    .locals 9

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 173
    .local v2, "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "android.telephony.SubscriptionManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    :goto_0
    const-string v5, "getDefaultDataSubId"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/android/settings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 179
    .local v3, "met":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 181
    .local v0, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    .line 184
    .local v4, "subId":I
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, v0, v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 189
    :goto_1
    invoke-virtual {p0, v4}, Lcom/lenovo/settings/Open4GEnabler;->isCTCard(I)Z

    move-result v5

    return v5

    .line 174
    .end local v0    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v3    # "met":Ljava/lang/reflect/Method;
    .end local v4    # "subId":I
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v3    # "met":Ljava/lang/reflect/Method;
    .restart local v4    # "subId":I
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isCTCard(I)Z
    .locals 13
    .param p1, "subId"    # I

    .prologue
    .line 193
    if-gez p1, :cond_0

    const/4 v9, 0x0

    .line 226
    :goto_0
    return v9

    .line 195
    :cond_0
    const/4 v3, 0x0

    .line 197
    .local v3, "mSubscriptionManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v9, "android.telephony.SubscriptionManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 201
    :goto_1
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/Class;

    .line 202
    .local v6, "objClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v6, v9

    .line 203
    const-string v9, "getSlotId"

    invoke-static {v3, v9, v6}, Lcom/android/settings/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 205
    .local v4, "met2":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 207
    .local v1, "cons":[Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    .line 210
    .local v7, "slotId":I
    const/4 v9, 0x1

    :try_start_1
    new-array v5, v9, [Ljava/lang/Object;

    .line 211
    .local v5, "objArgs":[Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    .line 212
    const/4 v9, 0x0

    aget-object v9, v1, v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 217
    .end local v5    # "objArgs":[Ljava/lang/Object;
    :goto_2
    const-string v0, ""

    .line 218
    .local v0, "ccid":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 219
    const-string v9, "ril.iccid.sim1"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x6

    if-lt v9, v10, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, "subCcid":Ljava/lang/String;
    :goto_4
    const-string v9, "898603"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "898611"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "898606"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    const/4 v9, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "ccid":Ljava/lang/String;
    .end local v1    # "cons":[Ljava/lang/reflect/Constructor;
    .end local v4    # "met2":Ljava/lang/reflect/Method;
    .end local v6    # "objClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "slotId":I
    .end local v8    # "subCcid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 213
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "cons":[Ljava/lang/reflect/Constructor;
    .restart local v4    # "met2":Ljava/lang/reflect/Method;
    .restart local v6    # "objClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "slotId":I
    :catch_1
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 221
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "ccid":Ljava/lang/String;
    :cond_2
    const-string v9, "ril.iccid.sim2"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 224
    :cond_3
    const-string v8, ""

    goto :goto_4

    .line 226
    .restart local v8    # "subCcid":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.lenovo.leos.mobileNetworkSettings"

    const-string v3, "com.lenovo.leos.mobileNetworkSettings.nwswitch.PreferredNetworkService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v2, "network_mode"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler;->mPreferrednetworkModeChangeObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-direct {p0}, Lcom/lenovo/settings/Open4GEnabler;->handleUpdateState()V

    .line 107
    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.svlte_srlte_nw_switch_done"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/settings/Open4GEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/settings/Open4GEnabler;->mPreferrednetworkModeChangeObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/lenovo/settings/Open4GEnabler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iput-object p1, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    .line 135
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    sget-object v1, Lcom/lenovo/settings/Open4GEnabler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/settings/Open4GEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    invoke-direct {p0}, Lcom/lenovo/settings/Open4GEnabler;->handleUpdateState()V

    goto :goto_0
.end method
