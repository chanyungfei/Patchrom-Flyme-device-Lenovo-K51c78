.class Lcom/mediatek/mom/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)Lcom/mediatek/mom/ListenerTriggerBase;
    .locals 7

    .prologue
    .line 81
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid controller ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    new-instance v0, Lcom/mediatek/mom/t;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/t;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 102
    return-object v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(IILandroid/os/IBinder;Landroid/os/Bundle;I)Lcom/mediatek/mom/ListenerTriggerBase;
    .locals 6

    .prologue
    .line 49
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 73
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid controller ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :pswitch_1
    new-instance v0, Lcom/mediatek/mom/t;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/t;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    .line 76
    :goto_0
    return-object v0

    .line 57
    :pswitch_2
    new-instance v0, Lcom/mediatek/mom/o;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/o;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 63
    :pswitch_3
    new-instance v0, Lcom/mediatek/mom/l;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/l;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 67
    :pswitch_4
    new-instance v0, Lcom/mediatek/mom/b;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/b;-><init>(IILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
