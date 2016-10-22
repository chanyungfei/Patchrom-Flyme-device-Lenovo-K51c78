.class Lcom/flyme/deviceoriginalsettings/location/AGPSSettings$1;
.super Ljava/lang/Object;
.source "AGPSSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->updateUI()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;->access$000(Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;)V

    .line 115
    return-void
.end method
