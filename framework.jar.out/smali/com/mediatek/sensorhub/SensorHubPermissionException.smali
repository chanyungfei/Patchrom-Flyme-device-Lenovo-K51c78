.class public Lcom/mediatek/sensorhub/SensorHubPermissionException;
.super Ljava/lang/SecurityException;
.source "SensorHubPermissionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
