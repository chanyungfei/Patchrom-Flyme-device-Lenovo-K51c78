.class Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;
.super Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDisplayRoutePreference"
.end annotation


# instance fields
.field private final mDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p4, "display"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    .line 907
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 910
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const-string v0, "WifiDisplaySettings"

    const-string v1, "reset preference summary"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const v0, 0x7f0c0be8

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->setSummary(I)V

    .line 915
    :cond_0
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    .line 916
    const v0, 0x7f0400ce

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->setWidgetLayoutResource(I)V

    .line 917
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 921
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$RoutePreference;->onBindView(Landroid/view/View;)V

    .line 923
    const v2, 0x7f0b00d7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 924
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 927
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 928
    .local v1, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 930
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 931
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 934
    .end local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;->mDisplay:Landroid/hardware/display/WifiDisplay;

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1600(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 939
    return-void
.end method
