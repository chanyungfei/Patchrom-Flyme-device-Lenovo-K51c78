.class public Lcom/mediatek/sensorhub/ContextInfo$UserActivity;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/ContextInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/ContextInfo$UserActivity$State;
    }
.end annotation


# static fields
.field public static final CONFIDENCE:I = 0x20

.field public static final CURRENT_STATE:I = 0x1f

.field public static final DURATION:I = 0x22

.field public static final TIMESTAMP:I = 0x21


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method
