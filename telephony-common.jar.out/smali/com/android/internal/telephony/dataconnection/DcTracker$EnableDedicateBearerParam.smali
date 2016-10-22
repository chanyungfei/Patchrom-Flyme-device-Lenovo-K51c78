.class public Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnableDedicateBearerParam"
.end annotation


# instance fields
.field public apnType:Ljava/lang/String;

.field public ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

.field public interfaceId:I

.field public qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

.field public signalingFlag:Z

.field public tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)V
    .locals 0
    .param p2, "dedicateDc"    # Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "flag"    # Z
    .param p5, "qos"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p6, "tft"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 4605
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4606
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 4607
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->apnType:Ljava/lang/String;

    .line 4608
    iput-boolean p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->signalingFlag:Z

    .line 4609
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->qosStatus:Lcom/mediatek/internal/telephony/QosStatus;

    .line 4610
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->tftStatus:Lcom/mediatek/internal/telephony/TftStatus;

    .line 4611
    return-void
.end method
