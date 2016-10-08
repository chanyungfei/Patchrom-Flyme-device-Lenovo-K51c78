.class public Lcom/mediatek/sensorhub/ContextInfo$Pedometer;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/ContextInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pedometer"
.end annotation


# static fields
.field public static final STEP_FREQUENCY:I = 0xf

.field public static final STEP_LENGTH:I = 0xe

.field public static final TIMESTAMP:I = 0x12

.field public static final TOTAL_COUNT:I = 0x10

.field public static final TOTAL_DISTANCE:I = 0x11


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method
