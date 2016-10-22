.class public Lcom/android/server/AlarmManagerService$PowerOffAlarmOrder;
.super Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerOffAlarmOrder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2212
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 2
    .param p1, "a1"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "a2"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 2216
    invoke-super {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    .line 2217
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 2218
    # invokes: Lcom/android/server/AlarmManagerService;->isAlarmForDeskClock(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2219
    const/4 v0, -0x1

    .line 2224
    :cond_0
    :goto_0
    return v0

    .line 2220
    :cond_1
    # invokes: Lcom/android/server/AlarmManagerService;->isAlarmForDeskClock(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static {p2}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2221
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2212
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$PowerOffAlarmOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
