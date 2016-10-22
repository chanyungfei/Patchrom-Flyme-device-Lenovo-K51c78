.class public Lcom/mediatek/sensorhub/ContextInfo$UserActivity$State;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/ContextInfo$UserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final IN_VEHICLE:I = 0x14

.field public static final ON_BICYCLE:I = 0x15

.field public static final ON_FOOT:I = 0x16

.field public static final STILL:I = 0x17

.field public static final TILTING:I = 0x19

.field public static final UNKNOWN:I = 0x18


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method
