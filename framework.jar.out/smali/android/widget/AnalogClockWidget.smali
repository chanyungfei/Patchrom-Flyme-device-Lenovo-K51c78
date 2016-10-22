.class public Landroid/widget/AnalogClockWidget;
.super Landroid/view/View;
.source "AnalogClockWidget.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final HOUR_RADIUS_SCALE:F = 0.5f

.field private static final MINUTE_RADIUS_SCALE:F = 0.8f

.field private static final OFFSET_RADIUS_SCALE:F = 0.1f

.field private static final RADIUS_SCALE:F = 0.9f

.field private static final STROKE_WIDTH:F = 4.0f

.field private static final STROKE_WIDTH_MS:F = 3.0f


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private final mDensity:F

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinutes:F

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AnalogClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/AnalogClockWidget;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Landroid/widget/AnalogClockWidget$1;

    invoke-direct {v0, p0}, Landroid/widget/AnalogClockWidget$1;-><init>(Landroid/widget/AnalogClockWidget;)V

    iput-object v0, p0, Landroid/widget/AnalogClockWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/AnalogClockWidget;->mDensity:F

    .line 90
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    .line 91
    iget-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Landroid/widget/AnalogClockWidget;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    return-void
.end method

.method static synthetic access$002(Landroid/widget/AnalogClockWidget;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AnalogClockWidget;
    .param p1, "x1"    # Landroid/text/format/Time;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/AnalogClockWidget;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AnalogClockWidget;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/AnalogClockWidget;->onTimeChanged()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    const/high16 v5, 0x42700000    # 60.0f

    .line 149
    iget-object v3, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 151
    iget-object v3, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 152
    .local v0, "hour":I
    iget-object v3, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 153
    .local v1, "minute":I
    iget-object v3, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 155
    .local v2, "second":I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClockWidget;->mMinutes:F

    .line 156
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/AnalogClockWidget;->mMinutes:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AnalogClockWidget;->mHour:F

    .line 158
    iget-object v3, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    invoke-direct {p0, v3}, Landroid/widget/AnalogClockWidget;->updateContentDescription(Landroid/text/format/Time;)V

    .line 159
    return-void
.end method

.method private updateContentDescription(Landroid/text/format/Time;)V
    .locals 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 175
    const/16 v1, 0x81

    .line 176
    .local v1, "flags":I
    iget-object v2, p0, Landroid/widget/AnalogClockWidget;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/16 v3, 0x81

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "contentDescription":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/widget/AnalogClockWidget;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 123
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 125
    iget-boolean v0, p0, Landroid/widget/AnalogClockWidget;->mAttached:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClockWidget;->mAttached:Z

    .line 127
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/widget/AnalogClockWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClockWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/AnalogClockWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 135
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;

    .line 136
    invoke-direct {p0}, Landroid/widget/AnalogClockWidget;->onTimeChanged()V

    .line 137
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 142
    iget-boolean v0, p0, Landroid/widget/AnalogClockWidget;->mAttached:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/widget/AnalogClockWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AnalogClockWidget;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClockWidget;->mAttached:Z

    .line 146
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x43b40000    # 360.0f

    const v9, 0x3dcccccd    # 0.1f

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget v0, p0, Landroid/widget/AnalogClockWidget;->mRight:I

    iget v1, p0, Landroid/widget/AnalogClockWidget;->mLeft:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 101
    .local v7, "x":I
    iget v0, p0, Landroid/widget/AnalogClockWidget;->mBottom:I

    iget v1, p0, Landroid/widget/AnalogClockWidget;->mTop:I

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    .line 102
    .local v8, "y":I
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v6, v0, v1

    .line 104
    .local v6, "radius":F
    iget-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Landroid/widget/AnalogClockWidget;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    int-to-float v0, v7

    int-to-float v1, v8

    iget-object v2, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    iget-object v0, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Landroid/widget/AnalogClockWidget;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget v0, p0, Landroid/widget/AnalogClockWidget;->mHour:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v10

    int-to-float v1, v7

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 110
    int-to-float v1, v7

    int-to-float v0, v8

    mul-float v2, v6, v9

    add-float/2addr v2, v0

    int-to-float v3, v7

    int-to-float v0, v8

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    iget-object v5, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget v0, p0, Landroid/widget/AnalogClockWidget;->mMinutes:F

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v10

    int-to-float v1, v7

    int-to-float v2, v8

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 116
    int-to-float v1, v7

    int-to-float v0, v8

    mul-float v2, v6, v9

    add-float/2addr v2, v0

    int-to-float v3, v7

    int-to-float v0, v8

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    iget-object v5, p0, Landroid/widget/AnalogClockWidget;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    return-void
.end method
