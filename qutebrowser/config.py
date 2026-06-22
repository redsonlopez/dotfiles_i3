config.load_autoconfig(False)

# Interface mínima e leve
c.statusbar.show = 'in-mode'      # Mostra barra de status apenas fora do modo normal
c.tabs.show = 'multiple'          # Mostra abas apenas quando há mais de uma
c.scrolling.smooth = False        # Desativa rolagem suave (menos uso de CPU)

# Flags do QtWebEngine para performance e compatibilidade
#c.qt.args = [
#    "--disable-gpu",
#    "--disable-gpu-compositing",
#    "--disable-gpu-rasterization",
#    "--disable-webgl",
#    "--disable-webgl2",
#    "--disable-accelerated-2d-canvas",
#    "--disable-accelerated-video-decode",
#    "--disable-accelerated-mjpeg-decode",
#    "--disable-smooth-scrolling",
#    "--disable-dev-shm-usage",
#    "--disable-features=VizDisplayCompositor,UseSkiaRenderer,CanvasOopRasterization"
#]

# Uso moderado de cache e histórico
#c.content.cache.size = 50 * 1024 * 1024  # 50 MB
#c.auto_save.session = False
#c.history_gap_interval = 3600            # Salva histórico a cada 1h

# Bloqueio de anúncios (baixe listas com :adblock-update)
#c.content.blocking.enabled = True
#c.content.blocking.method = "auto"

# Imagens habilitadas
#c.content.images = True

# Desativar avisos de autoplay e vídeos em tela cheia
#c.content.autoplay = True
#c.content.fullscreen.window = True

