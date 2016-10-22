.class Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;
.super Ljava/lang/Object;
.source "AutoBrightnessLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuntimeConfig"
.end annotation


# instance fields
.field public mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field final synthetic this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V
    .locals 1

    .prologue
    .line 946
    iput-object p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$RuntimeConfig;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 948
    return-void
.end method
