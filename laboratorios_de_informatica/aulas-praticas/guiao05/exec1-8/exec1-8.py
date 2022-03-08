from argparse import Action
import cherrypy

class HelloWorld(object):
    @cherrypy.expose
    def index(self):
        host = cherrypy.request.headers["Host"]
        return "Hello world!<br>You have successfully reached " + host

class Node(object):
    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Node (Node.index)"
    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Node (Node.page)"

class Root(object):
    def __init__(self):
        self.node = Node()
        self.hello = HelloWorld()
        self.html = HTMLDocument()
        self.actions = Actions()
    @cherrypy.expose
    def index(self):
        return "Eu sou o índice do Root (Root.index)"
    @cherrypy.expose
    def page(self):
        return "Eu sou um método do Root (Root.page)"
    @cherrypy.expose
    def form(self):
        cherrypy.response.headers["Content-Type"] = "text/html"
        return open("formulario.html")

class HTMLDocument(object):
    @cherrypy.expose
    def index(self):
        with open("./document.html", "r") as f:
            return f.read()

class Actions(object):
    @cherrypy.expose
    def doLogin(self, username=None, password=None):
        if username == "admin" and password == "admin":
            return "Login realizado com sucesso!"
        else:
            return "Login inválido!"

if __name__ == "__main__":
    cherrypy.quickstart(Root(), "/")
