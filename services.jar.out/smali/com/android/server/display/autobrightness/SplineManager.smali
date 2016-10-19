.class public Lcom/android/server/display/autobrightness/SplineManager;
.super Ljava/lang/Object;
.source "SplineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;,
        Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    }
.end annotation


# static fields
.field private static final DAYTIME_START_HOUR:I = 0x6

.field private static final DAYTIME_START_MINUTE:I = 0x1e

.field private static final DAY_PROFILE_ACTION:Ljava/lang/String; = "com.android.server.display.intent.DAY_PROFILE"

.field private static final DEBUG:Z = false

.field private static final NIGHT_PROFILE_ACTION:Ljava/lang/String; = "com.android.server.display.intent.NIGHT_PROFILE"

.field private static final NIGHT_START_HOUR:I = 0x13

.field private static final NIGHT_START_MINUTE:I = 0x1e

.field private static final ONE_DAY_IN_MILLIS:J = 0x5265c00L

.field private static final ONE_HOUR_IN_MILLIS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessLenovo.SplineManager"


# instance fields
.field private mAllSplines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;",
            "Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

.field private mHandler:Landroid/os/Handler;

.field private mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

.field private mResources:Landroid/content/res/Resources;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mAllSplines:Ljava/util/HashMap;

    .line 55
    sget-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->INVALID_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .line 58
    new-instance v0, Lcom/android/server/display/autobrightness/SplineManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/SplineManager$1;-><init>(Lcom/android/server/display/autobrightness/SplineManager;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 68
    new-instance v0, Lcom/android/server/display/autobrightness/SplineManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/autobrightness/SplineManager$2;-><init>(Lcom/android/server/display/autobrightness/SplineManager;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/server/display/autobrightness/SplineManager;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mResources:Landroid/content/res/Resources;

    .line 108
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mHandler:Landroid/os/Handler;

    .line 111
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->init()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/autobrightness/SplineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->updateTwilightMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;
    .param p1, "x1"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/autobrightness/SplineManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->isDayTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/autobrightness/SplineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->setNightProfileAlarm()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/autobrightness/SplineManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->setDayProfileAlarm()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/autobrightness/SplineManager;)Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;
    .param p1, "x1"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/autobrightness/SplineManager;
    .param p1, "x1"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/display/autobrightness/SplineManager;->setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    return-void
.end method

.method private addAutoBrightnessSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;[I[I)V
    .locals 2
    .param p1, "splineType"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .param p2, "lux"    # [I
    .param p3, "brightness"    # [I

    .prologue
    .line 214
    new-instance v0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;-><init>(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;[I[I)V

    .line 216
    .local v0, "spline":Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager;->mAllSplines:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/server/display/autobrightness/SplineManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x1070042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 161
    .local v1, "lux":[I
    iget-object v3, p0, Lcom/android/server/display/autobrightness/SplineManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x1070043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 164
    .local v0, "daytime_brightness":[I
    iget-object v3, p0, Lcom/android/server/display/autobrightness/SplineManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x1070044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 168
    .local v2, "night_brightness":[I
    sget-object v3, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v3, v1, v0}, Lcom/android/server/display/autobrightness/SplineManager;->addAutoBrightnessSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;[I[I)V

    .line 169
    sget-object v3, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->addAutoBrightnessSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;[I[I)V

    .line 172
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->isDayTime()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    sget-object v3, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v3}, Lcom/android/server/display/autobrightness/SplineManager;->setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v3, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v3}, Lcom/android/server/display/autobrightness/SplineManager;->setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    goto :goto_0
.end method

.method private isDayTime()Z
    .locals 8

    .prologue
    .line 272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 273
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 274
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 275
    .local v2, "hours":I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 276
    .local v3, "minutes":I
    mul-int/lit8 v6, v2, 0x3c

    add-int v5, v6, v3

    .line 277
    .local v5, "totalMinutes":I
    const/16 v4, 0x186

    .line 278
    .local v4, "startTime":I
    const/16 v1, 0x492

    .line 279
    .local v1, "endTime":I
    const/16 v6, 0x186

    if-lt v5, v6, :cond_0

    const/16 v6, 0x492

    if-gt v5, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    .locals 3
    .param p1, "splineType"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->getSplineType()Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mAllSplines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    iput-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    .line 203
    const-string v0, "--AutoBrightnessLenovo.SplineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSpline: splineType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDayProfileAlarm()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 254
    const-string v2, "AutoBrightnessLenovo.SplineManager"

    const-string v3, "setDayProfileAlarm "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.android.server.display.intent.DAY_PROFILE"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v8, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/display/autobrightness/SplineManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v1, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 261
    .local v6, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/display/autobrightness/SplineManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 262
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 264
    .local v7, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    const/4 v3, 0x6

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 265
    const/16 v2, 0xc

    const/16 v3, 0x1e

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 266
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 268
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 269
    return-void
.end method

.method private setNightProfileAlarm()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 236
    const-string v2, "AutoBrightnessLenovo.SplineManager"

    const-string v3, "setNightProfileAlarm "

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v8, Landroid/content/Intent;

    const-string v2, "com.android.server.display.intent.NIGHT_PROFILE"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v8, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/display/autobrightness/SplineManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v1, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 243
    .local v6, "sender":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/display/autobrightness/SplineManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 244
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 246
    .local v7, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    const/16 v3, 0x13

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v2, 0xc

    const/16 v3, 0x1e

    invoke-virtual {v7, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v2, 0xd

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 251
    return-void
.end method

.method private setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    .locals 3
    .param p1, "splineType"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    .line 209
    const-string v0, "AutoBrightnessLenovo.SplineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingSpline: splineType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private updateTwilightMode()V
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/server/display/autobrightness/SplineManager;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    .line 221
    .local v1, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 223
    .local v0, "isNight":Z
    const-string v2, "AutoBrightnessLenovo.SplineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTwilightMode: isNight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v0, :cond_1

    .line 227
    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v2}, Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    .line 233
    .end local v0    # "isNight":Z
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v0    # "isNight":Z
    :cond_1
    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v2}, Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    goto :goto_0
.end method


# virtual methods
.method public getSplineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->getSplineName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interpolate(F)F
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    invoke-virtual {v0, p1}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public interpolate(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;F)F
    .locals 2
    .param p1, "type"    # Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    .param p2, "x"    # F

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager;->mAllSplines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    .line 139
    .local v0, "spline":Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;
    invoke-virtual {v0, p2}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->interpolate(F)F

    move-result v1

    return v1
.end method

.method public onEnabled()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/display/autobrightness/SplineManager;->isDayTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/SplineManager;->setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    invoke-direct {p0, v0}, Lcom/android/server/display/autobrightness/SplineManager;->setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/display/autobrightness/SplineManager;->mCurrentSpline:Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;

    invoke-virtual {v0}, Lcom/android/server/display/autobrightness/SplineManager$BrightnessSpline;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
